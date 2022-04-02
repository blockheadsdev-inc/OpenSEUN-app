import 'package:flutter/material.dart';

import '../../../modules/menu_drawer.dart';
import 'import_investor_wallet_by_id_form.dart';

class ImportInvestorWalletByIdScreen extends StatefulWidget {
  const ImportInvestorWalletByIdScreen({Key? key}) : super(key: key);

  @override
  State<ImportInvestorWalletByIdScreen> createState() =>
      _ImportInvestorWalletByIdScreenState();
}

class _ImportInvestorWalletByIdScreenState
    extends State<ImportInvestorWalletByIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Import Investor Wallet'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 30.0),
              child: ImportInvestorWalletByIdForm(),
            ),
          ],
        ),
      ),
    );
  }
}

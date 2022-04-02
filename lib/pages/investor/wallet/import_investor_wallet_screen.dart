import 'package:flutter/material.dart';

import '../../../modules/menu_drawer.dart';
import 'import_investor_wallet_form.dart';

class ImportInvestorWalletScreen extends StatefulWidget {
  const ImportInvestorWalletScreen({Key? key}) : super(key: key);

  @override
  State<ImportInvestorWalletScreen> createState() =>
      _ImportInvestorWalletScreenState();
}

class _ImportInvestorWalletScreenState
    extends State<ImportInvestorWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Investor Wallet -'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 30.0),
              child: ImportInvestorWalletForm(),
            ),
          ],
        ),
      ),
    );
  }
}

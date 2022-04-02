import 'package:flutter/material.dart';

import '../../modules/menu_drawer.dart';
import 'create_investor_form.dart';

class CreateInvestorScreen extends StatefulWidget {
  const CreateInvestorScreen({Key? key}) : super(key: key);

  @override
  State<CreateInvestorScreen> createState() => _CreateInvestorScreenState();
}

class _CreateInvestorScreenState extends State<CreateInvestorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create New Investor'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 30.0),
              child: CreateInvestorForm(),
            ),
          ],
        ),
      ),
    );
  }
}

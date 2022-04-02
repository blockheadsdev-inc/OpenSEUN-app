import 'package:flutter/material.dart';
import 'package:openseun/pages/investor/create_investor_screen.dart';
import 'package:openseun/pages/project/create_project_screen.dart';

import '../pages/investor/wallet/import_investor_wallet_by_id_screen.dart';
import '../pages/investor/wallet/import_investor_wallet_screen.dart';
import '../pages/project/wallet/import_project_wallet_by_id_screen.dart';
import '../pages/project/wallet/import_project_wallet_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        // elevation: 6,
        // backgroundColor: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 86,
              color: Colors.blue,
              child: const DrawerHeader(
                child: Center(
                    child: Text(
                  "OpenSEUN",
                  style: TextStyle(color: Colors.white),
                )),
                // decoration: ,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text('Getting Started'),
              onTap: () {},
            ),
            ExpansionTile(
              title: const Text('Investor'),
              children: [
                ListTile(
                  title: const Text('Create Investor'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => CreateInvestorScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Import Project Wallet -'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ImportInvestorWalletScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Recover Investor Wallet'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ImportInvestorWalletByIdScreen()));
                  },
                )
              ],
            ),
            ExpansionTile(
              title: const Text('Projects'),
              children: [
                ListTile(
                  title: const Text('Import Project Wallet'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ImportProjectWalletScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Recover Project Wallet'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ImportProjectWalletByIdScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Project Wallet'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('New Project'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => CreateProjectScreen()));
                  },
                ),
                ListTile(
                  title: const Text('My Projects'),
                  onTap: () {},
                ),
              ],
            ),
            const Divider(
              indent: 10.0,
              endIndent: 150,
              thickness: 1,
            ),
            ListTile(
              title: const Text('FAQ'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

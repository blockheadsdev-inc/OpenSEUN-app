import 'package:flutter/material.dart';

import '../../modules/form_button.dart';

class CreateInvestorForm extends StatefulWidget {
  const CreateInvestorForm({Key? key}) : super(key: key);

  @override
  State<CreateInvestorForm> createState() => _CreateInvestorFormState();
}

class _CreateInvestorFormState extends State<CreateInvestorForm> {
  late TextEditingController _investorName;
  late TextEditingController _investorLocation;

  final GlobalKey _addInvestorFormKey = GlobalKey<FormState>();

  final List<String> _category = [
    "Individual",
    "Business",
    "Corporate",
  ];

  late String dropdownCategory = 'test';

  @override
  void initState() {
    _investorName = TextEditingController();
    _investorLocation = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _investorName.dispose();
    _investorLocation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _addInvestorFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: _investorName,
            decoration: const InputDecoration(labelText: "Investor Name"),
          ),
          TextFormField(
            controller: _investorLocation,
            decoration: const InputDecoration(labelText: "Location"),
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(labelText: "Category"),
            onChanged: (String? newValue) {
              setState(() {
                dropdownCategory = newValue!;
              });
            },
            items: _category.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(child: Text(value), value: value);
            }).toList(),
          ),
          const SizedBox(
            height: 40.0,
          ),
          FormButton(
            text: "Submit",
          ),
        ],
      ),
    );
  }
}

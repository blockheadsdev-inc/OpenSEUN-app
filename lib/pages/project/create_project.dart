import 'package:flutter/material.dart';

class CreateProjectForm extends StatefulWidget {
  const CreateProjectForm({Key? key}) : super(key: key);

  @override
  State<CreateProjectForm> createState() => _CreateProjectFormState();
}

class _CreateProjectFormState extends State<CreateProjectForm> {
  late TextEditingController _projectName;
  late TextEditingController _projectDescription;
  late TextEditingController _projectLocation;
  late TextEditingController _projectEstReductions;

  final GlobalKey _createProjectFormKey = GlobalKey<FormState>();

  final List<String> _category = [
    "Forestry and Conservation",
    "Renewable Energy",
    "Community Project",
    "Waste to Energy",
  ];

  final List<String> _types = [
    "Efficient Cook Stove",
    "Household Cool Stove",
    "Clean Drinking Water",
    "Reduced Deforestation",
    "Trees and Forestry",
    "Biomass",
    "Household Solar Cooker",
    "Wind Power",
    "Solar Power",
    "Hydro Power",
    "Land Fill Gas and Power Generation",
    "Geothermal",
  ];

  late String dropdownCategory = '';
  late String dropdownType = '';

  @override
  void initState() {
    _projectName = TextEditingController();
    _projectDescription = TextEditingController();
    _projectLocation = TextEditingController();
    _projectEstReductions = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _projectName.dispose();
    _projectDescription.dispose();
    _projectLocation.dispose();
    _projectEstReductions.dispose();
    super.dispose();
  }

  Widget _button() {
    return Container(
      width: 200.0,
      height: 57.0,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30)),
        child: const Text('Submit'),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _createProjectFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _projectName,
            decoration: const InputDecoration(labelText: "Project Name"),
          ),
          TextFormField(
            controller: _projectDescription,
            decoration: const InputDecoration(labelText: "Description"),
          ),
          TextFormField(
            controller: _projectLocation,
            decoration: const InputDecoration(labelText: "Location"),
          ),
          TextFormField(
            controller: _projectEstReductions,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(labelText: "Estimated Reductions"),
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
          DropdownButtonFormField(
            decoration: const InputDecoration(labelText: "Type"),
            onChanged: (String? newValue) {
              setState(() {
                dropdownType = newValue!;
              });
            },
            items: _types.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(child: Text(value), value: value);
            }).toList(),
          ),
          const SizedBox(
            height: 40.0,
          ),
          _button(),
        ],
      ),
    );
  }
}

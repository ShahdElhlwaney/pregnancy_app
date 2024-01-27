import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/auth/data/models/profile_manager.dart';
import 'package:pregnancy_app/features/auth/data/models/user.dart';
import 'package:pregnancy_app/features/auth/presentation/widgets/widgets.dart';
import 'package:provider/provider.dart';

class AboutYouView extends StatefulWidget {
  const AboutYouView({Key? key}) : super(key: key);

  @override
  State<AboutYouView> createState() => _AboutYouViewState();
}

class _AboutYouViewState extends State<AboutYouView> {
  final _nameController = TextEditingController();
  late String _relationship;
  late String _isPregnantSelected;
  late String _age = '';
  late bool _isPregnant;
  late bool _isHaveChildren;

  late Color _buttonColor;
  late String _selectedValue;

  @override
  void initState() {
    _relationship = 'Mother';
    _isPregnantSelected = 'Yes';
    _age = '';
    _isPregnant = true;
    _isHaveChildren = true;
    _buttonColor = Colors.grey;
    _selectedValue = 's';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileManager>(
      builder: (BuildContext context, manager, Widget? child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About you 💁️',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  nameField(),
                  const SizedBox(
                    height: 16,
                  ),
                  AgeField(
                    onChanged: (value) {
                      _age = value ?? '';
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PregnantField(
                      value: _isPregnantSelected,
                      onChanged: (value) {
                        _isPregnantSelected = value ?? '';
                        _isPregnant = value == 'Yes';
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  RelationshipField(
                      onChanged: (value) {
                        _relationship = value ?? 'Mother';
                      },
                      value: 'Mother'),
                  const SizedBox(
                    height: 16,
                  ),
                  HaveChildrenField(
                    value: 'Yes',
                    onChanged: (value) {
                      _isHaveChildren = value == 'Yes';
                    },
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'By tapping Continue you agree to our',
                        style: const TextStyle(color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' terms ',
                            style: TextStyle(
                                color: Colors.blue.withOpacity(.4),
                                fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: 'and our ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: ' privacy policy',
                            style: TextStyle(
                                color: Colors.blue.withOpacity(.4),
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Button(
                    textButton: 'Continue',
                    buttonColor: _buttonColor,
                    onPressed: () {
                      if (_buttonColor == Colors.blue) {
                        User user = User(
                            name: _nameController.text,
                            age: _age,
                            relationship: _relationship,
                            isHaveChildren: _isHaveChildren,
                            isPregnant: _isPregnant);
                        manager.addUser(user);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget nameField() {
    return TextField(
      controller: _nameController,
      decoration: const InputDecoration(
          labelText: 'Your name',
          hintText: 'Your name',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      onChanged: (name) {
        setState(() {
          _buttonColor =
              _nameController.text.isNotEmpty ? Colors.blue : Colors.grey;
          _nameController.text = name;
        });
      },
    );
  }
}



import 'package:flutter/material.dart';

class HaveChildrenField extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  const HaveChildrenField({Key? key, this.value, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>>isHaveChildren= [
    DropdownMenuItem<String>(
      value: value,
      child: Text('$value'),
    ),
    const DropdownMenuItem<String>(
    value: 'No',
    child: Text('No'),
    ),
    ];
    return DropdownButtonFormField<String>(
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        decoration: const InputDecoration(
            labelText: 'Do you have children',
            focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
        value: value,
        items: isHaveChildren,
        onChanged: onChanged);
  }
}

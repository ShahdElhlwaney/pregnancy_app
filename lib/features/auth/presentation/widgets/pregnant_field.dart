

import 'package:flutter/material.dart';

class PregnantField extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  const PregnantField({Key? key, this.value, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>>relationshipItems= [
      DropdownMenuItem<String>(
        value: value,
        child: Text('$value'),
      ),
      const DropdownMenuItem<String>(
        value: 'Not yet',
        child: Text('Not yet'),
      ),
    ];
    return  DropdownButtonFormField<String>(
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        decoration: const InputDecoration(
            labelText: 'Are you Pregnant?',
            focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.blue

                )
            ) ,

            enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(
                )
            ),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                )
            )
        ),
        value: value,
        items: relationshipItems,
        onChanged: onChanged
    );

  }
}

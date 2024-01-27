import 'package:flutter/material.dart';

class AgeField extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  const AgeField({Key? key, this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> ages = agetDropdownMenu();

    return DropdownButtonFormField<String>(
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        decoration: const InputDecoration(
            hintText: 'Select',
            labelText: 'Age',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
        value: value,
        items: ages,
        onChanged: onChanged);
  }

  List<DropdownMenuItem<String>> agetDropdownMenu() {
    List<DropdownMenuItem<String>> ages = [];
    for (var i = 16; i <= 50; i++) {
      if(i>=16&&i<=20)
         {
           ages.add( const DropdownMenuItem<String>(
             value: '16-20',
             child: Text('16-20'),
           ));
           i=20;
           continue;
         }
      ages.add(
        DropdownMenuItem<String>(
          value: i.toString(),
          child: Text('$i'),
        ),
      );
    }
    ages.add(const DropdownMenuItem<String>(
      value: '50+',
      child: Text('50+'),
    ));
    return ages;
  }
}

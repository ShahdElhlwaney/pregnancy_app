

import 'package:flutter/material.dart';



class RelationshipField extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;
  const RelationshipField({Key? key, required this.onChanged, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>>relationshipItems= [
      DropdownMenuItem<String>(
        value: value,
        child: Text('$value'),
      ),
      const DropdownMenuItem<String>(
        value: 'Father',
        child: Text('Father'),
      ),
      const DropdownMenuItem<String>(
        value: 'Parent',
        child: Text('Parent'),
      ),
      const DropdownMenuItem<String>(
        value: 'Partner',
        child: Text('Partner'),
      ),
      const DropdownMenuItem<String>(
        value: 'Single mother',
        child: Text('Single mother'),
      ),
      const DropdownMenuItem<String>(
        value: 'Grandparent',
        child: Text('Grandparent'),
      ),
      const DropdownMenuItem<String>(
        value: 'Uncle or Aunt',
        child: Text('Uncle or Aunt'),
      ),
      const DropdownMenuItem<String>(
        value: 'Friend',
        child: Text('Friend'),
      ),
    ];
    return  DropdownButtonFormField<String>(
    iconDisabledColor: Colors.transparent,
      iconEnabledColor: Colors.transparent,
      decoration: const InputDecoration(
          labelText: 'Relationship',
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


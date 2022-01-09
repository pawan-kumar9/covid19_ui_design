//ignore_for_file: file_names
import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({Key? key}) : super(key: key);

  @override
  _DropDownBtnState createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String dropdownValue = 'IND';
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 1,
        style: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        underline: Container(
          color: Colors.white,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['USA', 'IND', 'ENG', 'RSA']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

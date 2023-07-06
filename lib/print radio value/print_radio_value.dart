import 'package:flutter/material.dart';

class PrintRadioValue extends StatefulWidget {
  PrintRadioValue({super.key});

  @override
  State<PrintRadioValue> createState() => _PrintRadioValueState();
}

class _PrintRadioValueState extends State<PrintRadioValue> {
  String _groupValue = '';

  void checkRadio(String value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            ListTile(
              title: const Text('Option6'),
              leading: Radio(
                  value: 'Option1',
                  groupValue: _groupValue,
                  onChanged: (value) {
                    checkRadio(value as String);
                  }),
            ),
            ListTile(
              title: const Text('Option2'),
              leading: Radio(
                  value: 'Option2',
                  groupValue: _groupValue,
                  onChanged: (value) {
                    checkRadio(value as String);
                  }),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.grey),
              child: Text("select option:${_groupValue}"),
            )
          ],
        ),
      ),
    );
  }
}

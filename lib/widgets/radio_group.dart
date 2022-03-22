import 'package:flutter/material.dart';

enum Frequency { daily, hourly, weekly, monthly, yearly }

class RadioButtonGroup extends StatefulWidget {
  RadioButtonGroup({Key? key}) : super(key: key);

  @override
  State<RadioButtonGroup> createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButtonGroup> {
  Frequency? _frequency = Frequency.hourly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Hourly'),
          horizontalTitleGap: 0.0,
          leading: Radio<Frequency>(
            value: Frequency.hourly,
            activeColor: Colors.deepOrange,
            groupValue: _frequency, 
            onChanged: (Frequency? value) {
              setState(() {
                _frequency = value;
              });
            }
          ),
        ),
        ListTile(
          title: const Text('Daily'),
          horizontalTitleGap: 0.0,
          leading: Radio<Frequency>(
            value: Frequency.daily,
            activeColor: Colors.deepOrange,
            groupValue: _frequency, 
            onChanged: (Frequency? value) {
              setState(() {
                _frequency = value;
              });
            }
          ),
        ),
        ListTile(
          title: const Text('Weekly'),
          horizontalTitleGap: 0.0,
          leading: Radio<Frequency>(
            value: Frequency.weekly,
            activeColor: Colors.deepOrange,
            groupValue: _frequency, 
            onChanged: (Frequency? value) {
              setState(() {
                _frequency = value;
              });
            }
          ),
        ),
        ListTile(
          title: const Text('Monthly'),
          horizontalTitleGap: 0.0,
          leading: Radio<Frequency>(
            value: Frequency.monthly,
            activeColor: Colors.deepOrange,
            groupValue: _frequency, 
            onChanged: (Frequency? value) {
              setState(() {
                _frequency = value;
              });
            }
          ),
        ),
        ListTile(
          title: const Text('Yearly'),
          horizontalTitleGap: 0.0,
          leading: Radio<Frequency>(
            value: Frequency.yearly,
            activeColor: Colors.deepOrange,
            groupValue: _frequency, 
            onChanged: (Frequency? value) {
              setState(() {
                _frequency = value;
              });
            }
          ),
        ),
      ],
    );
  }
}
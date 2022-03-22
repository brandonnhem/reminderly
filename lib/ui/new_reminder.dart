import 'package:flutter/material.dart';
import 'package:reminder_app/widgets/radio_group.dart';

class NewReminder extends StatefulWidget {
  NewReminder({Key? key}) : super(key: key);

  @override
  State<NewReminder> createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remindly', style: TextStyle(
            color: Colors.white,
            )
          ),
          backgroundColor: Colors.deepOrange,
          actions: <Widget> [
            IconButton(
              icon: const Icon(
                Icons.event_outlined,
              ),
              tooltip: 'Add To Calendar',
              onPressed: () {
                // print('Google Calendar Feature Not Ready Yet');
              }
            ),
          ]
        ),
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Create New Reminder'),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Description (200 chars max.)'),
                    fillColor: Colors.deepOrange,
                    focusColor: Colors.deepOrange
                  )
                ),
              ),
              RadioButtonGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:reminder_app/ui/reminder_list.dart';

void main() => runApp(Remindly());

class Remindly extends StatelessWidget {
  const Remindly({Key? key}) : super(key: key);

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
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add New Reminder',
          child: const Icon(
            Icons.notification_add_outlined,
            color: Colors.white
          ),
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            // nothing yet
          },
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ReminderPage(),
        )
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:reminder_app/widgets/Reminder.dart';

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
        backgroundColor: Colors.white,
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

class ReminderPage extends StatefulWidget {
  ReminderPage({Key? key}) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          reminderCard(context, 'assets/images/dogbowl.jpg', 'Feed the dogs', '16:00')
        ],
      ),
    );
  }
}
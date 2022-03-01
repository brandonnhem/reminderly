import 'package:flutter/material.dart';
import 'package:reminder_app/widgets/reminder_card.dart';

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
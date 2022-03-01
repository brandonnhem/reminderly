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
    List<Widget> cards = [
      reminderCard(context, 'assets/images/dogbowl.jpg', 'Feed the dogs', '2:00'),
      reminderCard(context, 'assets/images/trashbin.jpg', 'Take out the ', '168:00'),
      reminderCard(context, 'assets/images/toothbrush.jpg', 'Brush TEETH', '8:00'),
      reminderCard(context, 'assets/images/laundrybasket.jpg', 'Do laundry', '5:00')
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return cards[index];
        }
      )
    );
  }
}
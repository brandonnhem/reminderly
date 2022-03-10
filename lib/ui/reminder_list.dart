import 'package:flutter/material.dart';
import 'package:reminder_app/model/Reminder.dart';

class ReminderPage extends StatefulWidget {
  ReminderPage({Key? key}) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  List<Widget> cards = [
    Reminder(time: '3:00 PM', description: 'Remember to feed the dogs!', imageUrl: 'assets/images/dogbowl.jpg'),
    Reminder(time: 'Mar. 15', description: 'Pay Netflix bill', imageUrl: 'assets/images/netflixlogo.jpg'),
    Reminder(time: '8:00 PM', description: 'Do laundry', imageUrl: 'assets/images/laundrybasket.jpg'),
    Reminder(
      time: '8:00 PM',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis, massa eu finibus convallis, massa turpis posuere dui, eget pellentesque augue urna vel dolor. Fusce tempor aliquet nullam.',
      imageUrl: 'assets/images/trashbin.jpg'
    )
  ];
  
  @override
  Widget build(BuildContext context) {
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
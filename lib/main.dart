import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/router/main_router.gr.dart';
import 'package:reminder_app/ui/reminder_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

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
            // open new reminder page
            AutoRouter.of(context).pushNamed('/new-reminder');
          },
        ),
        body: ReminderPage()
      )
    );
  }
}
import 'package:flutter/material.dart';

class Reminder extends StatelessWidget{
  final DateTime date;
  final String description;
  final String imageUrl;
  final String networkImageUrl;
  final String emoji;
  final bool daily; // use time
  final bool weekly; // use weekday
  final bool monthly; // use exact date
  final bool yearly; // use exact date + year

  const Reminder({
    Key? key,
    required this.date,
    required this.description,
    this.imageUrl = '',
    this.networkImageUrl = '',
    this.emoji = '',
    this.daily = false,
    this.weekly = false,
    this.monthly = false,
    this.yearly = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: const Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0
                        ),
                        child: (daily) ?
                          Row(
                            children: <Widget>[
                              Text(
                                getDailyTimeString(),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 36.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  (date.hour >= 12) ? 'PM' : 'AM',
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              )
                            ],
                          )
                          : (weekly) ?
                          Text(
                            getWeeklyDayString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 36.0,
                            ),
                          )
                          : (monthly) ?
                          Text(
                            getMonthlyDateString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 36.0,
                            ),
                          )
                          : (yearly) ?
                          Text(
                            getYearlyDateString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 30.0,
                            ),
                          ) 
                          : null
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: 60.0,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  description,
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                  )
                                ),
                              ),
                            ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: const Color.fromARGB(255, 194, 194, 194),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: (imageUrl != '' || networkImageUrl != '') ? 
                    imageUrl != '' ? 
                      Image.asset(
                        imageUrl,
                        height: 125.0,
                        fit: BoxFit.cover,
                      )
                      : Image.network(
                        networkImageUrl,
                        height: 125.0,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if(loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.deepOrange,
                              value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                                : null,
                            ),
                          );
                        },
                      )
                    : Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          emoji,
                          style: const TextStyle(
                            fontSize: 64.0,
                          ),
                        ),
                      ),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String getDailyTimeString() {
    if (date.hour > 12) {
      int nonMilitaryTime = 24 - date.hour;
      if (date.minute == 0) {
        return '$nonMilitaryTime:${date.minute}0'; 
      } else {
        return '$nonMilitaryTime:${date.minute}';
      }
    } else {
      if (date.minute == 0) {
        return '${date.hour}:${date.minute}0'; 
      } else {
        return '${date.hour}:${date.minute}';
      }
    }
  }

  String getWeeklyDayString() {
    int weekday = date.weekday;
    switch(weekday) {
      case 1: { return 'Monday'; }
      case 2: { return 'Tuesday'; }
      case 3: { return 'Wednesday'; }
      case 4: { return 'Thursday'; }
      case 5: { return 'Friday'; }
      case 6: { return 'Saturday'; }
      case 7: { return 'Sunday'; }
      default: { return 'Invalid Weekday'; }
    }
  }

  String getMonthlyDateString() {
    String fullDate = "";
    int month = date.month;
    switch(month) {
      case 1: { fullDate += 'Jan.'; }
      break;
      case 2: { fullDate += 'Feb.'; }
      break;
      case 3: { fullDate += 'Mar.'; }
      break;
      case 4: { fullDate += 'Apr.'; }
      break;
      case 5: { fullDate += 'May'; }
      break;
      case 6: { fullDate += 'Jun.'; }
      break;
      case 7: { fullDate += 'Jul.'; }
      break;
      case 8: { fullDate += 'Aug.'; }
      break;
      case 9: { fullDate += 'Sep.'; }
      break;
      case 10: { fullDate += 'Oct.'; }
      break;
      case 11: { fullDate += 'Nov.'; }
      break;
      case 12: { fullDate += 'Dec.'; }
      break;
      default: { fullDate += 'Invalid Month'; }
      break;
    }

    return fullDate + ' ${date.day}';
  }

  String getYearlyDateString() {
    String fullDate = getMonthlyDateString();
    return '\'' + date.year.toString().substring(2) + ' ' + fullDate;
  }
}


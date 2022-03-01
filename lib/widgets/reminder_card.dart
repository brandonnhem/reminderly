import 'package:flutter/material.dart';

Widget reminderCard(BuildContext context, String image, String description, String eta) {
  return Card(
    semanticContainer: true,
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: InkWell(
      onTap: () {
        print('card tapped');
      },
      splashColor: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6.0),
                  topRight: Radius.circular(6.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill
                    ),
                  )
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [ 
                      const Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        eta,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan> [
                  const TextSpan(
                    text: 'Kindly Reminder: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),
                  TextSpan(
                    text: description,
                    style: const TextStyle(
                      fontSize: 18
                    )
                  )  
                ]  
              )
            ),
          ),
          const SizedBox(height: 16.0,)
        ],
      ),
    ),
  );
}
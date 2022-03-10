import 'package:flutter/material.dart';

class Reminder extends StatelessWidget{
  final String time;
  final String description;
  final String imageUrl;
  final String networkImageUrl;

  const Reminder({
    Key? key,
    required this.time,
    required this.description,
    this.imageUrl = '',
    this.networkImageUrl = ''
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
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
                        child: Text(
                          time,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 36.0,
                          ),
                        ),
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
                  child: imageUrl != '' ? 
                    Image.asset(
                      imageUrl,
                      height: 125.0,
                      fit: BoxFit.cover,
                    )
                    : 
                    Image.network(
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
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
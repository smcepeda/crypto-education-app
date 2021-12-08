import 'package:aha/services/entities.dart';

import 'package:flutter/material.dart';

class ToolWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Text("Your tools",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 5),
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide(width: 1.5, color: Color(0XFF458CFF))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFF1F6FF),
                  ),
                  child: ListTile(
                    title: Text('Purchase',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Get your first cryptocurrencies',
                        style: TextStyle(color: Color(0XFF787878))),
                    trailing: Icon(Icons.lock, color: Color(0XFF458CFF)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide(width: 1.5, color: Color(0XFF15E3B3))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFF5FFFD),
                  ),
                  child: ListTile(
                    title: Text('Exchange',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Trade your cryptocurrencies',
                        style: TextStyle(color: Color(0XFF787878))),
                    trailing: Icon(Icons.lock, color: Color(0XFF458CFF)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

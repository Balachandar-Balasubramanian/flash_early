import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Material(
          elevation: 3.0,
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, top: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/default_dp.png'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Text(
                          "Urapakkam FC",
                          style: Kfont.copyWith(
                              fontSize: 30, color: Colors.deepPurple),
                        ),
                        Text(
                          "Chandru",
                          style: Kfont.copyWith(
                              fontSize: 20, color: Colors.redAccent),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(
                        width: 10,
                      ),
                      Text("31/05/22 Sunday"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.people),
                      SizedBox(
                        width: 10,
                      ),
                      Text("31/05/22 Sunday"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

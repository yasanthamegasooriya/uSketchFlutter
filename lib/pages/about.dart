import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("U Sketch"),
        backgroundColor: Color(0xFFBD34C59),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
                height: 300.0,
                width: 300.0,
                child: Image.asset("assets/images/uSketch.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "USketch is a Dress Customizing App that provide service for make you customize outfits and connect the order with suppliers in real time. U sketch assure Convenience, Reliability and Safety and was born of the need to reduce (if not eliminate) the difficulties face by customer in selecting outfits."),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("USketch HQ\n\n"
                "Faculty of Management and Finance\n\n"
                "University of Colombo\n\n"),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Customer support:",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "076 80 36 266 ,070 39 24 004",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Email address:",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "usketh20@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "You Feedback is important to us in order to make USketch better for you. Report any bugs, improvements and your suggestions regarding USketch so we can serve you even better."),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Text(
                "Follow us",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: 10.0,
              ),
              // Container(
              //     width: 20.0,
              //     height: 20.0,
              //     child: Image.asset("assets/images/facebook.png")),
              Material(
                child: InkWell(
                  onTap: () {
                    launch(
                        'https://www.facebook.com/136192378186220?referrer=whatsapp');
                  },
                  child: Container(
                    width: 45.0,
                    height: 45.0,
                    child: ClipRRect(
                      child: Image.asset('assets/images/facebook.png',
                          width: 110.0, height: 110.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    launch(
                        'https://instagram.com/u_sketch20?igshid=138fxswzogwn8');
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: ClipRRect(
                      child: Image.asset('assets/images/insta.png',
                          width: 110.0, height: 110.0),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with SingleTickerProviderStateMixin {
  late TabController objname;
  @override
  void initState() {
    objname = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'Assest/images/logo.png',
          height: 30,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: Icon(
              FontAwesomeIcons.plus,
              size: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: Icon(
              FontAwesomeIcons.facebookMessenger,
              size: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVYVhUWBL-SjsZNiaYKlpupyGaczng5likS1g1kcDcW79xC4ECd2kRhHvbFG-JUKJWp2ETaXlPN2aNapRb4XTwu5sU98mIPNfypzBfQC_P92RiqDGOiR6McifXmW69o78DVYzy6gRcEWvEIFjLQ-IoIKHjatM1lgEIHuZwt4v9R7ZV5acM1eKpSMvs/s1600/favicon-32x32.png'),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: Text(
                  "What's On Your Mind !",
                  textScaleFactor: 1.05,
                )),
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: Icon(
                    FontAwesomeIcons.image,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 6,
            color: Colors.grey.withOpacity(0.2),
          ),
          TabBar(
            controller: objname,
            labelColor: Colors.black,
            indicatorColor: Color(0xff30336b),
            tabs: [
              Tab(
                text: "stories",
              ),
              Tab(
                text: "Reels",
              )
            ],
          )
        ],
      ),
    );
  }
}

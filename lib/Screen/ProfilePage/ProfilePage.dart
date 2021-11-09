import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).copyWith().size.height,
      width: MediaQuery.of(context).copyWith().size.width,
      child: Stack(
        children: <Widget>[
          screen(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 500.0),
              ),
              pp(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 325.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "AKU ALEX",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "AI Developer",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Container(
                color: Colors.blue[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "173",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "24",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "460",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Scores",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Hi, I am a AI Developer working for hourly \nbasis. If you wants to contact me to build\nyour product leave a message.\n-------------------------------------------------------------------\n                     Get in touch with Me     ",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ButtonTheme(
                          height: 45.0,
                          minWidth: 120.0,
                          buttonColor: Colors.green[300],
                          child: ElevatedButton(
                            child: Text(
                              "FOLLOW",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: () => {},
                            //highlightColor: Colors.blue[100],
                          ),
                        ),
                        ButtonTheme(
                          height: 45.0,
                          minWidth: 100.0,
                          buttonColor: Colors.green[300],
                          child: ElevatedButton(
                            child: Text(
                              "MESSAGE",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: () => {},
                            // highlightColor: Colors.blue[50],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Widget screen() {
    return Container(
      child: Image(
        image: AssetImage("assets/images/4.jpeg"),
      ),
    );
  }

  Widget pp() {
    return Container(
        child: CircleAvatar(
      backgroundImage: AssetImage("assets/images/5.jpeg"),
      minRadius: 50,
      maxRadius: 80,
    ));
  }
}

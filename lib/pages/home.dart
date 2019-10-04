import 'package:flutter/material.dart';
import 'package:fluttertwitterclone/pages/card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            accentColor: Colors.blueAccent),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Container(
                  width: double.maxFinite,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        // Expanded(
                        //     flex: 2,
                        //     child: ),
                        Container(
                          width: 35,
                          height: 35,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://avatars1.githubusercontent.com/u/20596317',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 8,
                          child: Text(
                            'Home',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.star_half),
                            )),
                      ],
                    ),
                  )),
              bottom: TabBar(tabs: <Widget>[
                Container(
                  height: 50,
                  child: Icon(
                    Icons.home,
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.search),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.notifications),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.mail_outline),
                ),
              ]),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  child: ListView.separated(
                    itemCount: 4,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemBuilder: (context, index) {
                      return CardTwitter();
                    },
                  ),
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.edit),
            ),
          ),
        ));
  }
}

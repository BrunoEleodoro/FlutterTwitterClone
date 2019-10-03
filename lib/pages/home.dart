import 'package:flutter/material.dart';

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
            accentColor: Colors.blueAccent,
            tabBarTheme: TabBarTheme()),
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
                      return Container(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 20, left: 16, right: 16),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Container(
                                width: double.maxFinite,
                                // color: Colors.red,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 1,
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      'Flutter',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(Icons
                                                        .check_circle_outline),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '@FlutterDev',
                                                      style: TextStyle(),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '- 17h',
                                                      style: TextStyle(),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: IconButton(
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) {
                                                      return ListView(
                                                        children: <Widget>[
                                                          ListTile(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            leading: Icon(
                                                                Icons.face),
                                                            title: Text(
                                                                'Show less often'),
                                                          ),
                                                          ListTile(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            leading: Icon(
                                                                Icons.code),
                                                            title: Text(
                                                                'Embed Tweet'),
                                                          ),
                                                          ListTile(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            leading: Icon(Icons
                                                                .person_outline),
                                                            title: Text(
                                                                'Unfollow'),
                                                          ),
                                                          ListTile(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            leading: Icon(Icons
                                                                .volume_mute),
                                                            title: Text('Mute'),
                                                          ),
                                                        ],
                                                      );
                                                    });
                                              },
                                              icon: Icon(Icons.expand_more),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(fontSize: 14),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      '🇨🇳 Google Developer Days, China 🇨🇳 \n\n'),
                                              TextSpan(
                                                  text: '@MartinAguinis',
                                                  style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      ' shows us around the venue and finds out what the community is most excited about! \n\n✨ Announced Flutter 1.9\n✨ First onsite interview with Dash\n✨ Web support merged into the main repository\n\nWatch here →'),
                                              TextSpan(
                                                  text:
                                                      'https://goo.gle/2psg7gg',
                                                  style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      decoration: TextDecoration
                                                          .underline)),
                                            ]),
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      height: 200,
                                      margin:
                                          EdgeInsets.only(top: 15, right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                'https://pbs.twimg.com/tweet_video_thumb/EF5i-hGW4AEx6K8?format=jpg&name=360x360',
                                              ))),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.message),
                                              Text(' 2')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.refresh),
                                              Text(' 15')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.favorite),
                                              Text(' 102')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.share),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
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

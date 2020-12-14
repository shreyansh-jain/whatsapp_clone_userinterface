import 'package:flutter/material.dart';

import 'package:whatsapp_clone_userinterface/pages/calls_screen.dart';
import 'package:whatsapp_clone_userinterface/pages/chat_screen.dart';
import 'package:whatsapp_clone_userinterface/pages/camera_screen.dart';
import 'package:whatsapp_clone_userinterface/pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: Text('Whatsapp UI Clone'),
            elevation: 0.7,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(icon: Icon(Icons.camera_alt)),
                new Tab(text: "CHATS"),
                new Tab(text: "STATUS"),
                new Tab(text: "CALLS")
              ],
            ),
            actions: [
              new Icon(Icons.search),
              new Icon(Icons.more_vert)
            ]),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallsScreen()
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: () => {},
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon(Icons.message, color: Colors.white)));
  }
}

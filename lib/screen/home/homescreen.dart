import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/home/callsscreen.dart';
import 'package:whatsapp_clone/screen/home/camerascreen.dart';
import 'package:whatsapp_clone/screen/home/chatsscreen.dart';
import 'package:whatsapp_clone/screen/home/statusscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          title: UiHelper.customText(
            text: "WhatsApp",
            height: 23,
            color: Colors.white,
            fontweight: FontWeight.bold,
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 35,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            labelStyle: TextStyle(
              fontSize: 16, // Selected tab text size
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto', // Custom font (optional)
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 14, // Unselected tab text size
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            indicatorColor: Colors.white,
            indicatorWeight: 4,
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

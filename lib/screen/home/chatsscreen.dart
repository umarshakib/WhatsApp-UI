import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  var arrContent = [
    {
      "image":
          "https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
      "name": "ajij",
      "lastmsg": "what is your name",
      "time": "4:15 am",
      "msg": "4",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "shahil",
      "lastmsg": "what are you doing",
      "time": "5:15 am",
      "msg": "5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arrContent.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(arrContent[index]["image"].toString()),
            ),
            title: UiHelper.customText(text: arrContent[index]["name"].toString(), height:15,fontweight: FontWeight.bold,color: Color(0XFF000000)),
            subtitle: UiHelper.customText(text: arrContent[index]["lastmsg"].toString(), height: 13,color: Color(0xff889095)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: arrContent[index]["time"].toString(), height: 12,color: Color(0xff026500)),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff036A01),
                  child: UiHelper.customText(text: arrContent[index]["msg"].toString(), height: 12,color: Color(0xffffffff)),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xff008665),
        child: Icon(Icons.message_sharp),
      ),
    );
  }
}

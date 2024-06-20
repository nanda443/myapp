import 'package:flutter/material.dart';
import 'package:myapp/style/theme.dart';
import 'package:myapp/widget/call_widget.dart';
import 'package:myapp/widget/chat_widget.dart';
import 'package:myapp/widget/status_widget.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
with SingleTickerProviderStateMixin {
    TabController? tabController;
    var fabIcon = Icons.message;
    
    @override
    void initState() {
      super.initState();
      tabController = TabController(length: 4, vsync: this);
      tabController?.addListener((){
        setState(() {
          switch(tabController?.index){
            case 0:
              fabIcon = Icons.camera_alt;
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
            default:
              fabIcon = Icons.camera_alt;
          }
        });
      });
      tabController?.index = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whatsAppGreen,
        title: const Text('WhatsApp Business'),
        actions: const[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.more_vert),
            )
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const[
          Icon(Icons.camera_alt),
          ChatWidget(),
          StatusWidget(),
          CallWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        backgroundColor: whatsAppLightGreen,
        child: Icon(fabIcon),
      ),
    );
  }
}
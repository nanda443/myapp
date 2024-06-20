import 'package:flutter/material.dart';
import 'package:myapp/models/call_model.dart';
import 'package:myapp/style/theme.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index){
        final call = callList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 58,
            color: Colors.black,
          ),
          title: Text(call.name, style: customTextStyle,),
          subtitle: Text(call.statusDate),
          trailing: Icon(Icons.call, color: whatsAppLightGreen,),
        );
      },
    );
  }
}
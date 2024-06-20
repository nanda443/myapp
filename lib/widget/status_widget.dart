import 'package:flutter/material.dart';
import 'package:myapp/models/status_model.dart';
import 'package:myapp/style/theme.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index){
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 58,
            color: Colors.black,
          ),
          title: Text(status.name, style: customTextStyle,),
          subtitle: Text(status.statusDate),
        );
      }
      );
  }
}
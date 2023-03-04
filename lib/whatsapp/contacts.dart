import 'package:flutter/material.dart';
class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),

          PopupMenuButton(itemBuilder: (cont){
            return[
              PopupMenuItem(child: Text("inviter un proche"),),
              PopupMenuItem(child: Text("contacts"),),
              PopupMenuItem(child: Text("Actualiser"),),
              PopupMenuItem(child: Text("Aide"),),

            ];


          }),

        ],
        backgroundColor:  Color(0xff128C7E),
        title: Text("Contacts"),

      ),
    );
  }
}

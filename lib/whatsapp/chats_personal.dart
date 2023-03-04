import 'package:flutter/material.dart';
class Chats_personal extends StatelessWidget {
  String img,name,message;
  Chats_personal(this.name,this.img,this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
             
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
       IconButton(onPressed: (){}, icon:Icon(Icons.call)),
        PopupMenuButton(itemBuilder: (cont){
      return[
        PopupMenuItem(child: Text("Afficher contact"),),
        PopupMenuItem(child: Text("Medias,lients et doucuments"),),
        PopupMenuItem(child: Text("Rechercher"),),
        PopupMenuItem(child: Text("Notifications en mode sllencieux"),),
        PopupMenuItem(child: Text("Messages ephemeres"),),
        PopupMenuItem(child: Text("fond d'ecran"),),
        PopupMenuItem(child: Text("plus"),),
      ];}),

        ],
          backgroundColor: const Color(0xff128C7E),
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(this.img),),
            SizedBox(width:5),
            Text('${this.name}'),

          ],
        )

      ),

      body: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(this.message,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black38,
          ),),
        ),
      ),


    );
  }
}

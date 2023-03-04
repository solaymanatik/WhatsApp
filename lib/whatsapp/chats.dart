import 'package:flutter/material.dart';
import 'package:wahtsapp/data/data.dart';
import 'package:wahtsapp/whatsapp/chats_personal.dart';
import 'package:wahtsapp/whatsapp/contacts.dart';
class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i=0;i<mydata.length;i++)
            ListTile(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Chats_personal(mydata[i].name,mydata[i].imag ,mydata[i].messager )));
              },
              title: Text(mydata[i].name,
                style: TextStyle( fontSize: 15),),
              subtitle: Text(mydata[i].messager),
              trailing: Text(mydata[i].time),
              leading: CircleAvatar(

                backgroundImage: NetworkImage(mydata[i].imag),
              ),

            ),


        ],
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Contacts()));
    },
    backgroundColor:Color(0xff128C7E),
    child: const Icon(
    Icons.contact_page,
    size: 20,
    ),
        ),
    );
  }
}

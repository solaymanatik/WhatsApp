import 'package:flutter/material.dart';
import 'package:wahtsapp/data/datastatus.dart';
class Mystatu extends StatelessWidget {
  const Mystatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [
          for (int i=0;i<mystatus.length;i++)
            ListTile(
              title: Text(mystatus[i].statusTitle),
              subtitle: Text(mystatus[i].statusTime),

              leading: CircleAvatar(

                backgroundImage: NetworkImage(mystatus[i].statusImage),
              ),


            )
        ],

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor:Color(0xff128C7E),
        child: const Icon(
          Icons.camera_alt,
          size: 20,
        ),
      ),

    );



  }
}

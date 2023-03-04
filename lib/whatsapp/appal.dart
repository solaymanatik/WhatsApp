import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wahtsapp/data/dataappal.dart';
class Appal  extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i=0;i<ap.length;i++)
          ListTile(
            title: Text(ap[i].statusTitle),
            subtitle:  
            Text(ap[i].statusTime,
            
           ),
            trailing: Icon(Icons.call,
            color: Colors.green,),
            leading: CircleAvatar(

                backgroundImage: NetworkImage(ap[i].statusImage),
              ),
            
          )
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
        
    },
    backgroundColor:Color(0xff128C7E),
    child: const Icon (
    ( Icons.phone_forwarded),
    size: 20,
    ),
        ),
      
    );
  }
}

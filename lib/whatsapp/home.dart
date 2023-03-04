import 'package:flutter/material.dart';
import 'package:wahtsapp/whatsapp/appal.dart';
import 'package:wahtsapp/whatsapp/chats.dart';
import 'package:wahtsapp/whatsapp/status.dart';
class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(
            bottom:  TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(100),
                    child: Icon(
                      Icons.camera_alt_rounded,
                    )),
                Tab(
                  child: Text('CHATS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('STATUS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('CALLS', style: TextStyle(color: Colors.white)),
                ),
              ],
              labelColor: Colors.white,
            ),

            actions: [
              Icon(Icons.search),

              PopupMenuButton(itemBuilder: (cont){
                return[
                  PopupMenuItem(child: Text("Nouveau group"),),
                  PopupMenuItem(child: Text("Nouvelle diffusion"),),
                  PopupMenuItem(child: Text("Apparelis Connectés"),),
                  PopupMenuItem(child: Text("Messages importants"),),
                  PopupMenuItem(child: Text("Parmétres"),),
                ];


              }),

            ],
            backgroundColor: const Color(0xff128C7E),
            title: Text("whatsApp"),
          ),
        body: TabBarView(
          children: [
            Center(child: Text('This feature is coming soon')),
            Chats(),

            Mystatu(),
           Appal(),
          ],
        ),


        ));
  }
}

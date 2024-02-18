 
 import 'package:flutter/material.dart';

void main(){
runApp(My_custom_drawer());
 }

class My_custom_drawer extends StatelessWidget {
  const My_custom_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
         title: Text("Drawer Flutter",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
         ),
        
        drawer: Drawer(
          child: Column(
            children: [
                draHead(),

                listTile_widget("Profile",Icon(Icons.person,color: Colors.black,),),
                Divider(),
                listTile_widget("Notification",Icon(Icons.notifications,color: Colors.black,),),
                 Divider(),
                listTile_widget("Settings",Icon(Icons.settings,color: Colors.black,),),
                 Divider(),
                listTile_widget("Log Out",Icon(Icons.lock,color: Colors.black,),),
                Divider(),
            ],
          ),
        ),
      ),
    );
  }
}


draHead(){

  return DrawerHeader(
                  
                  child:  Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:NetworkImage("https://cdn.icon-icons.com/icons2/2108/PNG/512/flutter_icon_130936.png"),
                      
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      child: Text("Flutter",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
                  ],
                ));
}


listTile_widget(String txt,Icon icon1){

     return ListTile(
                  title: Text(txt,style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                  leading: icon1,
                  trailing: Icon(Icons.arrow_right,color: Colors.black,),
                );


}
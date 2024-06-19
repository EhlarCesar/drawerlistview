import 'package:flutter/material.dart';

class userPage extends StatefulWidget {
  const userPage({super.key});

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      
      appBar: AppBar(
        title: Center(child: const Text("Bienvenido Streaming" , style: TextStyle(color: Colors.white),),),
        backgroundColor: Color(0xFF123456),
        centerTitle: true,
        
        
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.shade900,
              Color.fromARGB(255, 20, 106, 176),
              Color.fromARGB(255, 9, 3, 29),
            ] ,),
          ),
          child: Center(child: Text("Streaming", style: TextStyle(color: Colors.white),),),
        ),
      )
      ,drawer: Drawer(
        child: ListView(
          children: <Widget> [
            UserAccountsDrawerHeader(accountName: Text("Streaming"), 
            accountEmail: Text("usuario@hotmail.com"),
            currentAccountPicture: CircleAvatar(backgroundColor: Color.fromARGB(255, 13, 35, 161),
            child: Text("S", style: TextStyle(fontSize: 40.0),),
            
            
            ),
            ),
            ListTile(
              title: Text("Usuario"),
              leading: Icon(Icons.person),
              onTap: (){

              } ,
            ),
             ListTile(
              title: Text("Suscripcion"),
            
              leading: Icon(Icons.tv),
              onTap: (){
                Navigator.pushNamed(context, '/suscripcion',);
              } , 
            ),
            ListTile(
              title: Text("Historial"),
              leading: Icon(Icons.history),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Socio"),
              leading: Icon(Icons.group),
              onTap: (){

              },
            ),


          ],
        ),
      ),
    );
  }
}
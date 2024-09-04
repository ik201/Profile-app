// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp ({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(  
     debugShowCheckedModeBanner:false,
theme: ThemeData(  
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity
),
home: Scaffold(  
  appBar:AppBar(  
     title:const Text('Profile App'),
  ),
  body: const 
   ProfilePage(),
),
    ); 
  }
}

class ProfilePage extends StatelessWidget {  
  const ProfilePage ({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {  
  return SingleChildScrollView(   
     padding: const EdgeInsets.all(20.0),
     child: Column( 
      children: <Widget> [  
        CircleAvatar(  
          radius: 80,
          backgroundImage: AssetImage('WIN_20240826_07_10_20_pro.jpeg'),
        ),
        const SizedBox(height:20), 
        Text('Ikem Samuel',
        style: Theme.of(context)
        .textTheme 
        .bodyLarge
        ?.copyWith(fontWeight:FontWeight.bold)
        ),
      const SizedBox(height: 10,),
      Text('I am a mobile Developer(flutter Developer)',
      textAlign: TextAlign.center, 
      style: Theme.of(context).textTheme.bodyLarge),
      const SizedBox(height: 20),
      Card(  
        elevation: 4.0,
        child: Column(children:<Widget> [
          const ListTile(
            leading:
            Icon(Icons.cake),
            title: Text('Birthday'),
         subtitle: Text('18th september'),
          ),
          ListTile(  
            leading: const
            Icon(Icons.web),
            title: const Text('Website'),
            subtitle: const Text(''),
            onTap: () {},
          ),
          const ListTile(
            leading:
            Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('ikemcharlse@gmail.com'),
         ),
        ],
       ),
      ),
      
      const SizedBox(height:20),
      Wrap(
        spacing: 10,
        children: <Widget>[  
         IconButton(  
          icon: const Icon(Icons.facebook),
          onPressed: () {},
          color: Colors.blue,
          tooltip: 'facebook',
         ), 
         IconButton(
          icon: const Icon(Icons.code),
          onPressed: () {},
          color: Colors.black,
          tooltip: 'Github',
         ),
         IconButton(  
          icon: const Icon(Icons.link),
          onPressed: () {},
          color: Colors.blue,
          tooltip: 'Linkedin',
         ),
        ], 
      ),
     ],
    ),
  );
 }  
}

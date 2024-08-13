import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(itemBuilder:(context, index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            decoration: BoxDecoration(
              
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://images.pexels.com/photos/27441042/pexels-photo-27441042/free-photo-of-a-black-and-white-photo-of-a-couple-dancing.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))
            ),
            child: Column(
              children: [
                Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/27441042/pexels-photo-27441042/free-photo-of-a-black-and-white-photo-of-a-couple-dancing.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Shibil;',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  subtitle: Text('Sponsored',
                  style: TextStyle(color: Colors.white,
                  fontSize: 14),),
                  trailing: Icon(Icons.more_vert,
                  color: Colors.white,),
                
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1,color: Colors.white)
                        ),
                        child: Text('Send message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                        ),),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.favorite_outline_outlined,
                    color: Colors.white,),
                    SizedBox(width: 20,),
                    Icon(Icons.send,color: Colors.white,)

                  ],
                )
              ],
            ),
          ),),
        ),
        
      ),
    );
  }
}
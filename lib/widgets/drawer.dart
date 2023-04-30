import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://media.licdn.com/dms/image/D4D03AQHa_gPHC_LntA/profile-displayphoto-shrink_400_400/0/1678524875480?e=1688601600&v=beta&t=fSRGub2Ffu_41UEDJXAav1YJfEPT7U9-Cs1gMrfyOPc";
    return  Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Madhur Tyagi"),
                accountEmail: Text("tyagimadhur06@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home , 
                color: Colors.white,
              ),
              title: Text(
                "Home" , 
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled , 
                color: Colors.white,
              ),
              title: Text(
                "Profile" , 
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail , 
                color: Colors.white,
              ),
              title: Text(
                "Contact Me" , 
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
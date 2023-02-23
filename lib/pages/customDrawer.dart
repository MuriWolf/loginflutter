import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:loginflutter/classes/userData.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  var userData = UserData();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(Icons.offline_bolt)),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.orange),
                            borderRadius:
                                BorderRadius.circular(100), //<-- SEE HERE
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://whatifgaming.com/wp-content/uploads/2021/10/661ece4c9340138ac3a170db0d86f25f.jpg"),
                          ),
                        ),
                        Text(
                          userData.getName(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          userData.getEmail(),
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.person_pin),
                      title: Text("My profile"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.message),
                      title: Text("Messages"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text("Notifications"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Contact us"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Help"),
                      dense: true,
                      visualDensity: VisualDensity.compact),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

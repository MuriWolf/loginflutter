import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:loginflutter/classes/userData.dart';
import 'package:loginflutter/widgets/CustomDivider.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  var userData = UserData();
  var customDrawerListTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 40, 40, 12),
          child: ListView(
            children: [
              Stack(
                children: [
                  const Positioned(
                      top: 0, right: 20, child: Icon(Icons.logout)),
                  Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 8),
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 85,
                          width: 85,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: Text(
                      "Home",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.person_pin),
                    title: Text(
                      "My profile",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.message),
                    title: Text(
                      "Messages",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: Text(
                      "Notifications",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: Text(
                      "Settings",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(
                      "Contact us",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: Text(
                      "Help",
                      style: customDrawerListTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

  var customDrawerListTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.grey.shade600,
  );

  Container drawerNotification(int numberOfNotifications) {
    String strNumberOfNotifications = "$numberOfNotifications";
    if (numberOfNotifications > 10) {
      strNumberOfNotifications = "10+";
    }
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 4,
              offset: const Offset(0, 4))
        ],
      ),
      child: Center(
          child: Text(
        strNumberOfNotifications,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }

  ListTile drawerListTile(
      IconData listIcon, String listTitle, bool notifications,
      {int numberOfNotifications = 0}) {
    return ListTile(
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Icon(listIcon),
      title: Text(
        listTitle,
        style: customDrawerListTextStyle,
      ),
      trailing: notifications ? drawerNotification(numberOfNotifications) : const SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 40, 16),
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
                            border: Border.all(
                                width: 5, color: Colors.deepOrangeAccent),
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
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  drawerListTile(Icons.home, "Home", false),
                  const CustomDivider(),
                  drawerListTile(Icons.person_pin, "My profile", false),
                  const CustomDivider(),
                  drawerListTile(Icons.message, "Messages", true,
                      numberOfNotifications: 12),
                  const CustomDivider(),
                  drawerListTile(Icons.notifications, "Notifications", true,
                      numberOfNotifications: 8),
                  const CustomDivider(),
                  drawerListTile(Icons.settings, "Settings", false),
                  const CustomDivider(),
                  drawerListTile(Icons.email, "Contact us", false),
                  const CustomDivider(),
                  drawerListTile(Icons.help, "Help", false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 49, 49),
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      "https://ui-avatars.com/api/?name=Usman Hab",
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Usman Habib Bahtiar",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "usmanhabibbahtiar@gmail.com",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("Update Profile"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.vpn_key),
            title: Text("Update Password"),
          ),
          ListTile(
            onTap: () => {
              Get.defaultDialog(
                  title: "Sign Out",
                  content: const Text("Are sure want to sign out?"),
                  cancel: ElevatedButton(
                      onPressed: () => Get.back(),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text("Cancel")),
                  confirm: ElevatedButton(
                      onPressed: () {}, child: const Text("Log Out")))
            },
            // authC.logout()
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          )
        ],
      ),
      bottomNavigationBar: SweetNavBar(
        currentIndex: 3,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
            iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ]),
              sweetBackground: Color.fromARGB(255, 247, 247, 247)),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.newspaper),
              sweetLabel: 'News',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.history),
              sweetLabel: 'History',
               iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.person),
              sweetLabel: 'Profile',
            iconColors: List<Color>.from([
                Color.fromARGB(255, 251, 52, 2),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.offAllNamed(Routes.HOME);
          } else if (index == 1) {
            Get.offAllNamed(Routes.ALL_NEWS);
          } else if (index == 2) {
            Get.offAllNamed(Routes.HISTORY);
          } else if (index == 3) {
            Get.offAllNamed(Routes.PROFILE);
          }
        },
      ),
    );
  }
}

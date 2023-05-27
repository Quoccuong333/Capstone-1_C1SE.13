import 'package:flutter/material.dart';
import '../widgets/mau/primarybutton.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // AppProvider appProvider = Provider.of<AppProvider>(
    //   context,
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: const Column(
                children: [
                  Icon(Icons.person_outline, size: 120,),
                  Text('cuong',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'cuongluong466@gmail.com',
                  ),
                  // const SizedBox(height: 2.0,),
                  SizedBox(
                    width: 120,
                    child: PrimaryButton(
                      title: "Edit Profile",
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SizedBox(
          //   width: 50,
          // ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    // Routes.instance
                    //     .push(widget: const OrderScreen(), context: context);
                  },
                  leading: const Icon(Icons.shopping_bag_outlined),
                  title: const Text("Friend"),
                ),
                ListTile(
                  onTap: () {
                    // Routes.instance.push(
                    //     widget: const FavouriteScreen(), context: context);
                  },
                  leading: const Icon(Icons.favorite_outline),
                  title: const Text("Scan QR code"),
                ),
                ListTile(
                  onTap: () {
                    // Routes.instance
                    //     .push(widget: const AboutUs(), context: context);
                  },
                  leading: const Icon(Icons.info_outline),
                  title: const Text("Contact us"),
                ),
                ListTile(
                  onTap: () {
                    // Routes.instance
                    //     .push(widget: const ChangePassword(), context: context);
                  },
                  leading: const Icon(Icons.change_circle_outlined),
                    title: const Text("Change Password"),
                ),
                const ListTile(
                  // onTap: () {
                  //   FirebaseAuthHelper.instance.signOut();

                  //   setState(() {});
                  // },
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Log out"),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text("Version 1.0.0")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
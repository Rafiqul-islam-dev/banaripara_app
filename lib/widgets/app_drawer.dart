import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: NetworkImage('https://i.ibb.co.com/L6XrX0q/462224588-924027206418240-6020533941583157512-n.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('হোম'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('নোটিফিকেশন'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('প্রোফাইল'),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('মুক্ত কোন'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('ফেসবুক পেইজ'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('ফেসবুক গ্রুপ'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('ইনস্টাগ্রাম'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            title: Text('ইউটিউব'),
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('কল করুন'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('ম্যাসেজ করুন'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('ইমেইল করুন'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('গোপনীয়তা'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String route,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}
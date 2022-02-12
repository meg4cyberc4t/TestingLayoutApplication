import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static const routeName = "profile_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Container(
              padding: EdgeInsets.all(5),
              width: 58,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg")),
            ),
            // backgroundColor: Theme.of(context).colorScheme.primary,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ava.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              //
              title: const Text(
                "Игорь Молчанов",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 1000),
          ),
        ],
      ),
    );
  }
}

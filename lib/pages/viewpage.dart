import 'package:flutter/material.dart';
import 'package:untitled/pages/viewpage1.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);
  static const routeName = "view_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image(
                  image: const AssetImage(
                    'assets/ithub_logo.png',
                  ),
                  color: Theme.of(context).colorScheme.primary,
                  height: 200),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(ViewPage1.routeName),
                child: const Text('Продолжить'),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                )),
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
      ),
    );
  }
}

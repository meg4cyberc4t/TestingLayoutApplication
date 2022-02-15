import 'package:flutter/material.dart';
import 'package:untitled/pages/event_page.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  static const routeName = "ntfs_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Уведомления'),
      ),
      body: Column(
        children: const [
          LocalListTile(
            title: 'Александр Александрович записался на ваше мероприятие',
          ),
          LocalListTile(
            title: 'Собрание "Про инвестиции" началось',
          )
        ],
      ),
    );
  }
}

class LocalListTile extends StatelessWidget {
  const LocalListTile({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Theme(
        data: ThemeData(splashColor: Theme.of(context).colorScheme.tertiary),
        child: ListTile(
          onTap: () => Navigator.of(context).pushNamed(EventPage.routeName),
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.black),
          ),
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.background,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          tileColor: Theme.of(context).colorScheme.primary,
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ),
    );
  }
}

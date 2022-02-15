import 'package:flutter/material.dart';
import 'package:untitled/pages/create_event_page.dart';
import 'package:untitled/pages/notifications_page.dart';
import 'package:untitled/widgets/event_listtile.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);
  static const routeName = "user_page";
  @override
  Widget build(BuildContext context) {
    Widget _localChip(String label) {
      return ChoiceChip(
        side: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        label: Text(label),
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
        onSelected: (value) {},
        selected: true,
        selectedColor: Theme.of(context).colorScheme.tertiary,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Имя Фамилия'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            onPressed: () => Navigator.of(context).pushNamed(
              NotificationsPage.routeName,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(CreateEventPage.routeName),
                                child: const Text('Создать объявление'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.background,
                                    ),
                                    foregroundColor: MaterialStateProperty.all(
                                      Colors.white,
                                    ),
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(vertical: 8),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Описание',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Я такой-то человек, занимаюсь профессионально этим и этим, хочу то, хочу это. очень добрый текст текст',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Активности',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: [
                              ...[
                                'assets/exp/curators.jpeg',
                                'assets/exp/news.jpeg',
                                'assets/exp/volunteer.jpeg'
                              ].map((e) => _LocalCard(asset: e))
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Сфера деятельности',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            children: [
                              _localChip('web-design'),
                              _localChip('3D'),
                              _localChip('Digital'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Запланированно',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const EventListTile(id: '1'),
                        const EventListTile(id: '2'),
                        const EventListTile(id: '3'),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Отложено',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const EventListTile(id: '4'),
                        const EventListTile(id: '5'),
                        const EventListTile(id: '6'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.105,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      radius: 41.5,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        radius: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Имя Фамилия',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Text(
                            'В сети',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LocalCard extends StatelessWidget {
  const _LocalCard({Key? key, required this.asset}) : super(key: key);
  final String asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(asset),
      ),
    );
  }
}

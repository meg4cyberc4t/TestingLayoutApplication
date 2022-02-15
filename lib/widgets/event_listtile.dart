import 'package:flutter/material.dart';
import 'package:untitled/pages/event_page.dart';

class EventListTile extends StatelessWidget {
  const EventListTile({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 4,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RawMaterialButton(
          onPressed: () => Navigator.of(context).pushNamed(EventPage.routeName),
          splashColor: Theme.of(context).colorScheme.tertiary,
          fillColor: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Онлайн конференция',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 2, right: 4),
                          child: Icon(
                            Icons.calendar_today,
                            size: 10,
                          ),
                        ),
                        Text(
                          'чт, 11:45',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 2, right: 4),
                          child: Icon(
                            Icons.place,
                            size: 10,
                          ),
                        ),
                        Text(
                          'Курская, 301 кабинет',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: CircleAvatar(
                              radius: 10,
                              child: Center(
                                child: Text(
                                  "+5",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

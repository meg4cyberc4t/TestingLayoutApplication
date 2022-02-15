import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);
  static const routeName = "event_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мероприятие'),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          snappings: [0.4, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 2),
                        child: Text(
                          "Имя Фамилия",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Container(
                        child: const Text("Мероприятие"),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Center(
                  child: Text(
                'Какое-то там мероприятие набор приходите, будет классно',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              )),
            ),
            const SizedBox(height: 300),
          ],
        ),
        color: Theme.of(context).colorScheme.primary,
        builder: (context, state) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2, right: 4),
                        child: Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      Text(
                        'чт, 11:45',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2, right: 4),
                        child: Icon(
                          Icons.place,
                          size: 10,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      Text(
                        'Курская, 301 кабинет',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton.large(
                        onPressed: Navigator.of(context).pop,
                        heroTag: 'button_1',
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.thumb_up,
                              size: 25,
                            ),
                            Text('Принять'),
                          ],
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        foregroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      FloatingActionButton.large(
                        onPressed: Navigator.of(context).pop,
                        heroTag: 'button_2',
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.access_time,
                              size: 25,
                            ),
                            Text('Отложить'),
                          ],
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        foregroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      FloatingActionButton.large(
                        onPressed: Navigator.of(context).pop,
                        heroTag: 'button_3',
                        foregroundColor: Theme.of(context).colorScheme.primary,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.thumb_down,
                              size: 25,
                            ),
                            Text('Отменить'),
                          ],
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

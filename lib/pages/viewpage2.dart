import 'package:flutter/material.dart';
import 'package:untitled/pages/viewpage3.dart';

class ViewPage2 extends StatefulWidget {
  const ViewPage2({Key? key}) : super(key: key);
  static const routeName = "view_page_2";

  @override
  State<ViewPage2> createState() => _ViewPage2State();
}

class _ViewPage2State extends State<ViewPage2> {
  final List<String> pinnedHashtags = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: 'illu',
                  child: CircleAvatar(
                    radius: 100,
                    child: const Text(
                      'иллюстрация',
                      style: TextStyle(fontSize: 10),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Text(
                'Заголовок',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'краткое описание страницы',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                '2/3',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  maxLines: 2,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.tertiary),
                  decoration: InputDecoration(
                    hintText: 'Расскажите о себе!',
                    hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary),
                    labelText: 'Описание',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Возможно вы работали в:',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Align(
                child: Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: [
                    ...[
                      'assets/exp/bulgakov.png',
                      'assets/exp/curators.jpeg',
                      'assets/exp/gdsc.jpeg',
                      'assets/exp/news.jpeg',
                      'assets/exp/volunteer.jpeg'
                    ].map((e) => _LocalCard(asset: e))
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(ViewPage3.routeName),
                child: const Text('Далее'),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                )),
              ),
            ],
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
      ),
    );
  }
}

class _LocalCard extends StatefulWidget {
  const _LocalCard({Key? key, required this.asset}) : super(key: key);
  final String asset;
  @override
  State<_LocalCard> createState() => __LocalCardState();
}

class __LocalCardState extends State<_LocalCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => setState(() {
        isChecked = !isChecked;
      }),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                color: isChecked
                    ? Theme.of(context).colorScheme.primary.withOpacity(0.7)
                    : Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(widget.asset),
            ),
          ),
          Positioned(
            right: 2,
            top: 2,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isChecked
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

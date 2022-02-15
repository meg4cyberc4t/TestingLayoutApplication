import 'package:flutter/material.dart';
import 'package:untitled/pages/viewpage2.dart';

class ViewPage1 extends StatefulWidget {
  const ViewPage1({Key? key}) : super(key: key);
  static const routeName = "view_page_1";

  @override
  State<ViewPage1> createState() => _ViewPage1State();
}

class _ViewPage1State extends State<ViewPage1> {
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
                '1/3',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Сфера деятельности',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 4,
                runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.start,
                children: [
                  'Образование',
                  'Спорт',
                  'Животные',
                  'Кино',
                  'Политика',
                  'Живопись',
                  'Иностранные языки',
                  'Психология',
                  'История',
                  'Экономика'
                ].map((e) => _localChip(e)).toList(),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(ViewPage2.routeName),
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

  Widget _localChip(String label) {
    final bool isSelect = pinnedHashtags.contains(label);
    return ChoiceChip(
      side: BorderSide(color: Theme.of(context).colorScheme.tertiary),
      label: Text(label),
      labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: isSelect
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.tertiary,
          ),
      onSelected: (value) => setState(() =>
          value ? pinnedHashtags.add(label) : pinnedHashtags.remove(label)),
      selected: isSelect,
      selectedColor: Theme.of(context).colorScheme.tertiary,
    );
  }
}

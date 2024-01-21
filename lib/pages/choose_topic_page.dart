import 'package:flutter/material.dart';
import 'package:meditation_app/data/topicStorage.dart';
import 'package:meditation_app/utils/theme.dart';

final topcStorage = AssetTopicStorage();

class ChooseTopicPage extends StatelessWidget {
  const ChooseTopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: _Header(),
            ),
            Flexible(
              flex: 3,
              child: FutureBuilder(
                future: topcStorage.load(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Container(
                    color: Colors.red,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 3,
          ),
          Flexible(
            /*
            RichText(
              text: TextSpan(
                text: 'What Bring you\n',
                style: PrimaryFont.bold(24).copyWith(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'to Silent Moon?',
                    style: PrimaryFont.medium(24).copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
             */
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'What Bring you',
                      style: PrimaryFont.bold(28),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'to Silent Moon?',
                      style: PrimaryFont.light(28),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            flex: 1,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                'choose a topic to focus on:',
                style: PrimaryFont.light(20),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}

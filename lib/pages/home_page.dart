import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? const Stack(children: [
                GetStartedBackground(),
                FractionallySizedBox(
                  heightFactor: 0.4,
                  child: GetStartedHeader(),
                ),
              ])
            : const Row(
                children: [
                  Expanded(child: GetStartedHeader()),
                  Expanded(child: GetStartedBackground()),
                ],
              ),
      ),
    );
  }
}

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SvgPicture.asset('assets/images/bg_get_started.svg'),
        ),
      ),
    );
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SvgPicture.asset(
            'assets/images/ic_logo.svg',
            alignment: const Alignment(0.0, -0.8),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hi Afsar, Welcome\n',
                  style: PrimaryFont.medium(30).copyWith(
                    color: kColorLightYellow,
                    height: 1.3,
                  ),
                  children: [
                    TextSpan(
                      text: 'to Silent Moon',
                      style: PrimaryFont.thin(30).copyWith(
                        color: kColorLightYellow,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Explore the app, Find some peace of mind to prepare for meditation.',
                style: PrimaryFont.light(16).copyWith(
                  color: kColorLightGrey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:humidity_slider/humidity_slider/widget/humidity.dart';
import 'package:humidity_slider/humidity_slider/widget/humidity_congfig.dart';
import 'package:humidity_slider/humidity_slider/widget/humidity_info.dart';
import 'package:humidity_slider/humidity_slider/widget/scaffold.dart';
import 'package:humidity_slider/humidity_slider/widget/slider.dart';
import 'package:provider/provider.dart';

class HumidityScreen extends StatelessWidget {
  const HumidityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => HumidityConfig()),
        ChangeNotifierProvider(create: (_) => Humidity())
      ],
      child: const HumiditySliderScaffold(
        activeIndex: 1,
        body: HumiditySliderPage(),
      ),
    );
  }
}

class HumiditySliderPage extends StatelessWidget {
  const HumiditySliderPage({Key? key}) : super(key: key);

  final bool kShowBack = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: kShowBack
            ? const DecorationImage(
                image: AssetImage("assets/design.png"),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(
            width: 180,
            child: HumiditySlider(),
          ),
          Expanded(
            child: HumidityInfo(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'components/home_button.dart';
import 'home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('NativeFlutterLab'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButton(
                    onTap: getBatteryLevel,
                    bigTitle: 'BatteryLevel',
                    desc: '',
                    borderColor: Colors.green,
                    color: Colors.white,
                    icon: Icons.battery_0_bar,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                  HomeButton(
                    onTap: () {},
                    bigTitle: 'configurações',
                    desc: '',
                    borderColor: Colors.orange,
                    color: Colors.white,
                    icon: Icons.settings,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                  HomeButton(
                    onTap: () {},
                    bigTitle: 'Clean',
                    desc: '',
                    borderColor: Colors.orange,
                    color: Colors.white,
                    icon: Icons.clear,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButton(
                    onTap: () {},
                    bigTitle: 'Historico',
                    desc: '',
                    borderColor: Colors.orange,
                    color: Colors.white,
                    icon: Icons.lock_clock,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                  HomeButton(
                    onTap: () {},
                    bigTitle: 'Conexão',
                    desc: '',
                    borderColor: Colors.orange,
                    color: Colors.white,
                    icon: Icons.bluetooth,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                  HomeButton(
                    onTap: () {
                      setState(() {});
                    },
                    bigTitle: '',
                    desc: '',
                    borderColor: Colors.orange,
                    color: Colors.white,
                    icon: Icons.graphic_eq,
                    width: AppConstants.instance.screenWidth * 0.25,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

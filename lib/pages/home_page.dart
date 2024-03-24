import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/classes/add_button.dart';
import 'package:flutter_application_2/classes/app_bar.dart';
import 'package:flutter_application_2/classes/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('lib/assets/images/background_app.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                const SliverAppBar(
                  floating: true,
                  forceMaterialTransparency: true,
                  expandedHeight: 110,
                  flexibleSpace: FlexibleSpaceBar(
                    background: MyAppBar(),
                  ),
                ),
                UserList(),
              ],
            ),
            // Add Button
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 3,
                    sigmaY: 3,
                  ),
                  child: Container(
                    height: 80.0,
                    color: Colors.white,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment.topCenter,
                    //     end: Alignment.bottomCenter,
                    //     colors: [
                    //       Colors.white.withOpacity(0.0),
                    //       Colors.grey.withOpacity(0.3),
                    //     ],
                    //   ),
                    // ),
                    //color: Colors.blue.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            const AddButton(),
          ],
        ),
      ),
    );
  }
}

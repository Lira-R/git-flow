import 'package:flutter/material.dart';
import 'package:flutter_application_2/classes/user_cards.dart';

class UserList extends StatelessWidget {
  UserList({super.key});

  final List users = [
    ['Anna', '23th'],
    ['Mary', '12th'],
    ['Josh', '1st'],
    ['Anna', '23th'],
    ['Mary', '12th'],
    ['Josh', '1st']
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: users.length,
        (context, index) => const GlassContainer(),
      ),
    );
  }
}

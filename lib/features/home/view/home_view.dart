import 'package:flutter/material.dart';
import '../widgets/logout_button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Popular Shows'),
        actions: const [
          LogoutButtonWidget(),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

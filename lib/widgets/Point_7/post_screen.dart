import 'package:flutter/material.dart';
import 'package:tcc_prefeitura/widgets/Point_1/post_bottom_bar.dart';

import './post_app_bar.dart';

class PostScreen7 extends StatelessWidget {
  const PostScreen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/ponto7.png"),
            fit: BoxFit.cover,
            opacity: 0.7),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
